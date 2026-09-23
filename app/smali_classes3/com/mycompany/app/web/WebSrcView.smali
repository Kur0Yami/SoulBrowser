.class public Lcom/mycompany/app/web/WebSrcView;
.super Lcom/mycompany/app/view/MyWebSafe;
.source "SourceFile"


# instance fields
.field public c:Lcom/mycompany/app/web/WebNestView$WebViewListener;

.field public f:I

.field public g:I

.field public h:I


# virtual methods
.method public final computeVerticalScrollExtent()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/web/WebSrcView;->g:I

    .line 6
    .line 7
    return v0
.end method

.method public final computeVerticalScrollOffset()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final computeVerticalScrollRange()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/mycompany/app/web/WebSrcView;->h:I

    .line 6
    .line 7
    return v0
.end method

.method public final destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/mycompany/app/web/WebSrcView;->c:Lcom/mycompany/app/web/WebNestView$WebViewListener;

    .line 6
    .line 7
    return-void
.end method

.method public getScrollTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/web/WebSrcView;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/mycompany/app/web/WebSrcView;->f:I

    .line 2
    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/mycompany/app/web/WebSrcView;->c:Lcom/mycompany/app/web/WebNestView$WebViewListener;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/mycompany/app/web/WebNestView$WebViewListener;->c(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mycompany/app/web/WebNestView$WebViewListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/web/WebSrcView;->c:Lcom/mycompany/app/web/WebNestView$WebViewListener;

    .line 2
    .line 3
    return-void
.end method
