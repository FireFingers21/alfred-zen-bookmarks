#!/bin/zsh --no-rcs

# Get filepath for Default Profile
case "${releaseChannel}" in
	"zen")
		readonly versionCode="278CDD2020B02885"
		;;
	"zentwilight")
		readonly versionCode="9EBD2AC824310766"
		;;
esac
readonly defaultProfile=$(awk -v versionCode="$versionCode" 'BEGIN {FS="="} $0 ~ versionCode {flag=1} flag && /^Default=Profiles/ {print $2; exit}' "${HOME}/Library/Application Support/zen/installs.ini")
defaultProfilePath="/Library/Application Support/zen/${defaultProfile}"

if [[ -z ${defaultProfile} ]]; then
	defaultProfileSubtext="❌ No Profiles Found in ~/Library/Application Support/zen ❌"
	defaultProfileArg="${HOME}/Library/Application Support/zen"
else
	defaultProfileSubtext="~${defaultProfilePath}"
	defaultProfileArg="${HOME}/${defaultProfilePath}"
fi

cat << EOB
{"items": [
	{
		"title": "Open Zen Profile Manager",
		"subtitle": "Manage profiles in the About Profiles page",
		"icon": { "path": "images/${releaseChannel}Logo.png" },
		"variables": { "pref_id": "profileManager" }
	},
	{
		"title": "Open Default Profile in Finder",
		"subtitle": "${defaultProfileSubtext}",
		"arg": "${defaultProfileArg}",
		"icon": { "path": "images/${releaseChannel}Logo.png" },
		"variables": { "pref_id": "profilePath" }
	},
	{
		"title": "Release Channel Settings",
		"subtitle": "Select your preferred build for ${alfred_workflow_name}",
		"icon": { "path": "images/${releaseChannel}Logo.png" },
		"variables": { "pref_id": "build" }
	},
	{
		"title": "Browser Settings",
		"subtitle": "Select the default browsers for ${alfred_workflow_name}",
		"icon": { "path": "images/${releaseChannel}Logo.png" },
		"variables": { "pref_id": "browser" }
	},
]}
EOB