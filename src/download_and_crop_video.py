# coding=utf-8
from yt_dlp import YoutubeDL
from moviepy.video.fx.resize import resize
from moviepy.editor import VideoFileClip


def main():
    video_url = 'https://www.youtube.com/watch?v=77bQAwa-mPk'
    download_resolution = 720
    full_video_path = '../data/input_video/full_video.mp4'
    input_clip_path = '../data/input_video/clip_video.mp4'
    start_pt = 10
    end_pt = 16

    ydl_opts = {'format': f'best[height<={download_resolution}]', 'overwrites': True, 'outtmpl': full_video_path}
    with YoutubeDL(ydl_opts) as ydl:
        ydl.download([video_url])

    # 指定区間切り抜き
    with VideoFileClip(full_video_path) as video:
        subclip = video.subclip(start_pt, end_pt)
        subclip.write_videofile(input_clip_path)

    clip = VideoFileClip(input_clip_path)
    clip = resize(clip, height=420)


if __name__ == '__main__':
    main()
