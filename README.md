# Deploy to a server with GitHub Actions

## Requirements

- SSH must be enabled in your server
- You must have a GitHub repository (private for safety) created

## How to use

If you follow all the steps below, when you git push to your GitHub repository, the GitHub Actions will deploy the modifications to your server.

1. Choose a [deployment folder](#deployment-folders)
2. Rename the deployment folder to `.github` and put it in your GitHub repository
3. Setup the [GitHub Actions secrets]() in your GitHub repository
4. Clone your GitHub repository to your server. See [this section](#git-clone-your-github-repository-to-your-server) to know how

## Deployment folders

<table>
    <thead>
        <tr>
            <th>Folder name</th>
            <th>Description</th>
            <th>Usage recommendation</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href=".github.blank">.github.blank</a></td>
            <td>Only deploys your modifications to your server, when you push to your GitHub repository</td>
            <td>Use this folder if you just want to deploy your modifications to your server</td>
        </tr>
        <tr>
            <td><a href=".github.laravel">.github.laravel</a></td>
            <td>Besides deployment, it optmizes your Laravel files and enter in maintenance mode during the push</td>
            <td>Use this folder if you want to deploy to a Laravel application in your server</td>
        </tr>
    </tbody>
</table>

## GitHub Actions secrets

<table>
    <thead>
        <tr>
            <th>Secret</th>
            <th>Description</th>
            <th>Example</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>REPOSITORY_PATH_IN_SERVER</td>
            <td>This is the path to the git repository in your server (where you cloned it)</td>
            <td>/home/username/repository/</td>
        </tr>
        <tr>
            <td>SSH_HOST</td>
            <td>This is the SSH hostname to access your server</td>
            <td>website.com</td>
        </tr>
        <tr>
            <td>SSH_PORT</td>
            <td>This is the SSH port number to access your server</td>
            <td>1234</td>
        </tr>
        <tr>
            <td>SSH_USERNAME</td>
            <td>This is the SSH username to access your server</td>
            <td>some_username</td>
        </tr>
        <tr>
            <td>SSH_PASSWORD</td>
            <td>This is the SSH password to access your server</td>
            <td>some_password</td>
        </tr>
    </tbody>
</table>

## Git clone your GitHub repository to your server

You have two choices to clone your GitHub repository to your server: HTTP or SSH.

### Git clone via HTTP (recommended)

Enter your server terminal (via SSH or CPanel, for example) and go to the path you want to clone your GitHub repository.

Run the following command.

```
git clone https://username:token@github.com/username/repository.git
```

You must replace **username** with your GitHub username, **token** with your GitHub [personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token) and **repository** with your GitHub repository name.

The reason why HTTP is recommended is because git usage in SSH can sometimes have issues with permissions.

### Git clone via SSH

Enter your server terminal (via SSH or CPanel, for example) and go to the path you want to clone your GitHub repository.

Run the following command.

```
git clone git@github.com:username/repository.git
```

You must replace **username** with your GitHub username and **repository** with your GitHub repository name.

You also need to create a SSH key in your server and add it to GitHub. See this [GitHub documentation page](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) to know how.
