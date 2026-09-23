.class Lcom/mycompany/app/image/ImageGifView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageGifView$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageGifView$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageGifView$5$1;->c:Lcom/mycompany/app/image/ImageGifView$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageGifView$5$1;->c:Lcom/mycompany/app/image/ImageGifView$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageGifView$5;->c:Lcom/mycompany/app/image/ImageGifView;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageGifView;->E:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/image/ImageGifView;->F:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/image/ImageGifView;->E:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/image/ImageGifView;->F:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/image/ImageGifView;->D:Lcom/mycompany/app/view/GlideRequests;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    sget-object v4, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    iget-object v3, v0, Lcom/mycompany/app/image/ImageGifView;->D:Lcom/mycompany/app/view/GlideRequests;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5, v1, v2}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/GlideRequests;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/mycompany/app/image/ImageGifView;->G:Lcom/bumptech/glide/request/RequestListener;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v0, v0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/image/ImageGifView;->D:Lcom/mycompany/app/view/GlideRequests;

    .line 60
    .line 61
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/GlideRequests;->u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/mycompany/app/image/ImageGifView;->G:Lcom/bumptech/glide/request/RequestListener;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v4}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/mycompany/app/image/ImageGifView;->A:Lcom/mycompany/app/view/MyImageView;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
