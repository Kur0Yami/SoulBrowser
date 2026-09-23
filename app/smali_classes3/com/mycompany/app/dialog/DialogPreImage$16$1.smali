.class Lcom/mycompany/app/dialog/DialogPreImage$16$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage$16;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage$16;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$16$1;->c:Lcom/mycompany/app/dialog/DialogPreImage$16;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage$16$1;->c:Lcom/mycompany/app/dialog/DialogPreImage$16;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreImage$16;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->s0:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->t0:Z

    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->s0:Lcom/mycompany/app/view/GlideRequests;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogPreImage;->e0:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v3, v4, v5}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreImage;->u0:Lcom/bumptech/glide/request/RequestListener;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->t0:Z

    .line 59
    .line 60
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->s0:Lcom/mycompany/app/view/GlideRequests;

    .line 61
    .line 62
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 73
    .line 74
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreImage;->u0:Lcom/bumptech/glide/request/RequestListener;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
