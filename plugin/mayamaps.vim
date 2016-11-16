" undo
nnoremap <leader>mu :py sendBufferToMaya(userCmd='mel.eval("evalDeferred undo")')<CR>
nnoremap <leader>mU :py sendBufferToMaya(userCmd='mel.eval("evalDeferred redo")')<CR>

" run current line
nnoremap <leader>sm :py sendBufferToMaya ()<cr>
vnoremap <leader>sm :py sendBufferToMaya ()<cr>
" run current buffer
nnoremap <leader>sb :py sendBufferToMaya (True)<cr>
vnoremap <leader>sb :py sendBufferToMaya (True)<cr>

" make a new scene
nnoremap <Leader>mn :<C-u>py sendBufferToMaya(userCmd='cmds.file(new=True, force=True)')<CR>

" frame all (or selected, if any)
nnoremap <Leader>mf :<C-u>py sendBufferToMaya(userCmd='cmds.viewFit()')<CR>

" clear script editor history
nnoremap <Leader>m<BS> :<C-u>py sendBufferToMaya(userCmd='cmds.scriptEditorInfo(clearHistory=True)')<CR>

" play/stop/rewind time
nnoremap <Leader>mp :py sendBufferToMaya(userCmd='cmds.play(state=True)')<CR>
nnoremap <Leader>ms :py sendBufferToMaya(userCmd='cmds.play(state=False)')<CR>
nnoremap <Leader>mr :py sendBufferToMaya(userCmd='cmds.currentTime(cmds.playbackOptions(minTime=True))')<CR>

" tweak time range (these can take a count)
nnoremap <Leader>m<< :<C-u>py sendBufferToMaya(userCmd='cmds.playbackOptions(minTime=cmds.playbackOptions(query=True, minTime=True)-=v:count1<CR>)')<CR>
nnoremap <Leader>m<> :<C-u>py sendBufferToMaya(userCmd='cmds.playbackOptions(minTime=cmds.playbackOptions(query=True, minTime=True)+=v:count1<CR>)')<CR>
nnoremap <Leader>m>< :<C-u>py sendBufferToMaya(userCmd='cmds.playbackOptions(maxTime=cmds.playbackOptions(query=True, maxTime=True)-=v:count1<CR>)')<CR>
nnoremap <Leader>m>> :<C-u>py sendBufferToMaya(userCmd='cmds.playbackOptions(maxTime=cmds.playbackOptions(query=True, maxTime=True)+=v:count1<CR>)')<CR>
nnoremap <Leader>m<<Bar> :<C-u>py sendBufferToMaya(userCmd='cmds.playbackOptions(minTime==v:count1<CR>)')<CR>
nnoremap <Leader>m><Bar> :<C-u>py sendBufferToMaya(userCmd='cmds.playbackOptions(maxTime==v:count1<CR>)')<CR>

