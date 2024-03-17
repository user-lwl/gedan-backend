package com.lwl.gedan.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.lwl.gedan.model.dto.post.PostQueryRequest;
import com.lwl.gedan.model.entity.Music;
import com.lwl.gedan.model.entity.Post;

import java.util.Date;
import java.util.List;

/**
 * 帖子数据库操作
 *
 */
public interface MusicMapper extends BaseMapper<Post> {

    /**
     * 查询帖子列表（包括已被删除的数据）
     */
    List<Post> listPostWithDelete(Date minUpdateTime);

    /**
     * 获取歌单列表
     * @param postQueryRequest
     * @return
     */
    List<Music> getMusicMapper(PostQueryRequest postQueryRequest);

    /**
     * 获取搜索歌单列表
     * @param searchText
     * @return
     */
    List<Music> getSearchMusicList(String searchText);

    /**
     * 新增歌曲
     * @param music
     * @return
     */
    Integer addMusic(Music music);

    /**
     * 修改歌曲
     * @param music
     * @return
     */
    Integer updateMusic(Music music);

    /**
     * 删除歌曲
     * @param music
     * @return
     */
    Integer deleteMusic(Music music);
}




