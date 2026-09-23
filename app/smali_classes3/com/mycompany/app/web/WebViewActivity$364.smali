.class Lcom/mycompany/app/web/WebViewActivity$364;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$364;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/web/WebViewActivity$364;->c:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$364;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Vk:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_glide

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_glide

    const-string v2, "data:image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_glide

    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->Wk:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Vk:Ljava/lang/String;

    iput-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Wk:Ljava/lang/String;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    if-eqz v7, :cond_post

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_post

    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->decodeDataUrl(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v4, v2, v1}, Lcom/mycompany/app/main/MainUtil;->writeBytes(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_post

    iget-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    invoke-static {}, Lcom/mycompany/app/main/MainUri;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/mycompany/app/main/MainUri;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mycompany/app/main/MainUri$UriItem;

    move-result-object v1

    if-eqz v1, :cond_reg_done

    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    invoke-static {v5, v2, v6, v1}, Lcom/mycompany/app/db/book/DbBookDown;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;)J

    move-result-wide v5

    goto :cond_post

    :cond_reg_done
    const-wide/16 v5, 0x0

    :cond_post
    iput-boolean v4, v0, Lcom/mycompany/app/web/WebViewActivity;->al:Z

    iput-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->bl:Ljava/lang/String;

    iput-wide v5, v0, Lcom/mycompany/app/web/WebViewActivity;->cl:J

    iget-object v0, v0, Lcom/mycompany/app/web/WebViewActivity;->f2:Lcom/mycompany/app/view/MyWebCoord;

    if-nez v0, :cond_data_ui

    return-void

    :cond_data_ui
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$364$3;

    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$364$3;-><init>(Lcom/mycompany/app/web/WebViewActivity$364;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_glide
    iget-boolean v2, p0, Lcom/mycompany/app/web/WebViewActivity$364;->c:Z

    .line 6
    .line 7
    sget-object v4, Lcom/bumptech/glide/util/Executors;->a:Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/web/WebViewActivity;->i1:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2, v1, v5}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0}, Lcom/mycompany/app/view/GlideApp;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/mycompany/app/view/GlideRequests;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/view/GlideRequests;->A()Lcom/mycompany/app/view/GlideRequest;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/view/GlideRequest;->P()Lcom/mycompany/app/view/GlideRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$364$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$364$1;-><init>(Lcom/mycompany/app/web/WebViewActivity$364;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v3, v0, v4}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/view/GlideApp;->a(Landroidx/fragment/app/FragmentActivity;)Lcom/mycompany/app/view/GlideRequests;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/mycompany/app/view/GlideRequests;->z()Lcom/mycompany/app/view/GlideRequest;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/mycompany/app/view/GlideRequest;->P()Lcom/mycompany/app/view/GlideRequest;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/mycompany/app/web/WebViewActivity$364$2;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebViewActivity$364$2;-><init>(Lcom/mycompany/app/web/WebViewActivity$364;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1, v3, v0, v4}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
