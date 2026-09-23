.class Lcom/mycompany/app/dialog/DialogUrlLink$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink$21;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink$21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$21$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$21$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$21;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink$21;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 26
    .line 27
    if-eqz v1, :cond_3

    .line 28
    .line 29
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->j0:Ljava/lang/String;

    .line 30
    .line 31
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->M0:Z

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    :cond_2
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 39
    .line 40
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 41
    .line 42
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v4, v5, v1}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/GlideRequests;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->W0:Lcom/bumptech/glide/request/RequestListener;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 71
    .line 72
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 83
    .line 84
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->W0:Lcom/bumptech/glide/request/RequestListener;

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->x0:Lcom/mycompany/app/view/MyRoundImage;

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method
