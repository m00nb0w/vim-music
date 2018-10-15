from pytube import YouTube 
import searchUrl
import os 

def loadAudio(keyword, savePath):
    url = "https://www.youtube.com/watch?v=" + searchUrl.youtube_search(keyword, 25)
    if (url is None):
        print('Could not find any result with current search term')
        return 1
    yt = YouTube(url).streams.first().download(savePath)
    print(url)

#loadAudio("thang dien", "../resources/audio")
