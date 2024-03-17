package com.lwl.gedan.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lwl.gedan.model.dto.post.PostQueryRequest;
import com.lwl.gedan.model.entity.Music;
import com.lwl.gedan.model.entity.Post;
import com.lwl.gedan.model.vo.PostVO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 歌单服务
 *
 */
public interface MusicService extends IService<Post> {

    /**
     * 校验
     *
     * @param post
     * @param add
     */
    void validPost(Post post, boolean add);

    /**
     * 获取查询条件
     *
     * @param postQueryRequest
     * @return
     */
    QueryWrapper<Post> getQueryWrapper(PostQueryRequest postQueryRequest);

    /**
     * 从 ES 查询
     *
     * @param postQueryRequest
     * @return
     */
    Page<Post> searchFromEs(PostQueryRequest postQueryRequest);

    /**
     * 获取帖子封装
     *
     * @param post
     * @param request
     * @return
     */
    PostVO getPostVO(Post post, HttpServletRequest request);

    /**
     * 分页获取帖子封装
     *
     * @param postPage
     * @param request
     * @return
     */
    Page<PostVO> getPostVOPage(Page<Post> postPage, HttpServletRequest request);

    /**
     * 获取歌单列表
     * @param postQueryRequest
     * @return
     */
    List<Music> getMusicList(PostQueryRequest postQueryRequest);

    /**
     * 搜索歌单列表
     * @param postQueryRequest
     * @return
     */
    List<Music> getMusicSearchList(PostQueryRequest postQueryRequest);

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
