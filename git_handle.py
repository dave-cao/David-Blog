from git import Repo

git_path = "."


def git_push(commit_message):
    try:
        repo = Repo(git_path)
        origin = repo.remote(name="origin")
        origin.pull()
        print("pulled")

        repo.git.add(all=True)
        repo.index.commit(commit_message)
        origin.push()
        print("successfully pushed")
    except:
        print("Some error occured while pushing the code")
