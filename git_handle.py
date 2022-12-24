from git import Repo

git_path = "."


def git_push(commit_message):
    try:
        repo = Repo(git_path)
        repo.git.add(all=True)
        repo.index.commit(commit_message)
        origin = repo.remote(name="origin")
        origin.push()
        print("successfully pushed")
    except:
        print("Some error occured while pushing the code")
