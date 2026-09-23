.class Lcom/mycompany/app/dialog/DialogDownZip$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownZip$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$11$1;->c:Lcom/mycompany/app/dialog/DialogDownZip$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$11$1;->c:Lcom/mycompany/app/dialog/DialogDownZip$11;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownZip$11;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->u1:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->u1:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t1:Lcom/mycompany/app/view/GlideRequests;

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t1:Lcom/mycompany/app/view/GlideRequests;

    .line 24
    .line 25
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownZip;->d0:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v4, v1, v5}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/GlideRequests;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 42
    .line 43
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->v1:Lcom/bumptech/glide/request/RequestListener;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t1:Lcom/mycompany/app/view/GlideRequests;

    .line 56
    .line 57
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/GlideRequests;->u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 66
    .line 67
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->v1:Lcom/bumptech/glide/request/RequestListener;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
