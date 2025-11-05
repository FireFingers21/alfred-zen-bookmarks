# <img src='Workflow/icon.png' width='45' align='center' alt='icon'> Zen Bookmarks

Search Zen bookmarks in Alfred

## Setup

This workflow requires [jq](https://jqlang.github.io/jq/) to function, which comes preinstalled on macOS 15 Sequoia and later.

## Usage

Search for your [Zen](https://zen-browser.app/) bookmarks via the `bm` keyword. Type to refine your search.

![Searching for Zen bookmarks](Workflow/images/about/keyword.png)

Bookmarks are always searchable by Name, while filtering by Description, Keyword, URL, and Tag is configurable from the [Workflow’s Configuration](https://www.alfredapp.com/help/workflows/user-configuration/).

![Narrowing search for Zen bookmarks](Workflow/images/about/tagFilter.png)

* <kbd>↩</kbd> Open bookmark in primary browser.
* <kbd>⇧</kbd><kbd>⌘</kbd><kbd>↩</kbd> Open in primary browser without closing Alfred.
* <kbd>⌘</kbd><kbd>↩</kbd> Open bookmark in secondary browser.
* <kbd>⌘</kbd><kbd>L</kbd> View all tags and full URL in Large Type.
* <kbd>⇧</kbd> Hold to show bookmark description.

The Zen Twilight build is also supported. The Workflow's icon colours and bookmarks will change based on the [configured](https://www.alfredapp.com/help/workflows/user-configuration/) Release Channel.

![Searching for Zen bookmarks using Nightly](Workflow/images/about/otherBuilds.png)

Append `::` to the configured [Keyword](https://www.alfredapp.com/help/workflows/inputs/keyword) to access other actions, including opening the [Zen Profile Manager](https://support.mozilla.org/kb/profile-manager-create-remove-switch-firefox-profiles). Bookmarks are only indexed from the default profile, which can be changed from the Profile Manager in each Zen build.

![Other actions](Workflow/images/about/inlineSettings.png)

Configure the [Hotkey](https://www.alfredapp.com/help/workflows/triggers/hotkey/) as a shortcut for searching your bookmarks.

Bookmarks with the tag `Exclude-Alfred` will be hidden from search. This tag is case sensitive.

**Note**: Due to a limitation of Firefox (which Zen is based on), bookmark changes may take time to appear in Alfred. Restarting Zen will make all changes appear immediately.