# shadcn-ui-components-update-checker

Check for updates to [shadcn/ui](https://ui.shadcn.com) components

## Usage

```bash
$ bash shadcn-ui-components-update-checker.sh ${YOUR_REACT_PROJECT_DIR}
🔄 Updates found

🔌 Differences found in 'command' component:
- Diff: 'npx shadcn-ui@latest diff command'
- Update: 'npx shadcn-ui@latest add command'
```

## Installation and Setup

### Alias Setup

#### For Zsh

```bash
THIS_APP_PATH="path/to"
echo "alias shadcn-ui-components-update-checker='bash -c '\''bash ${THIS_APP_PATH}/shadcn-ui-components-update-checker.sh \"\${1:-.}\"'\'' _'" >> ~/.zshrc
source ~/.zshrc
```

#### For Bash

```bash
THIS_APP_PATH="path/to"
echo "alias shadcn-ui-components-update-checker='bash -c '\''bash ${THIS_APP_PATH}/shadcn-ui-components-update-checker.sh \"\${1:-.}\"'\'' _'" >> ~/.bashrc
source ~/.bashrc
```

### Using the Alias

- After adding the alias, you can execute the `shadcn-ui-components-update-checker` command in any directory.
- The script will not work if it is executed in the wrong directory.
- The directory will be treated as the React project directory for the `shadcn-ui-components-update-checker.sh` script.

```bash
$ cd ${YOUR_REACT_PROJECT_DIR}
$ shadcn-ui-components-update-checker

# or
$ shadcn-ui-components-update-checker ${YOUR_REACT_PROJECT_DIR}
```

## License

- This script is licensed under the MIT License.
- See the [LICENSE](LICENSE) file for details.
