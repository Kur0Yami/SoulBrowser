.class Lcom/mycompany/app/dialog/DialogPreImage$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage$18;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage$18;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$18$1;->c:Lcom/mycompany/app/dialog/DialogPreImage$18;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreImage$18$1;->c:Lcom/mycompany/app/dialog/DialogPreImage$18;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreImage$18;->c:Lcom/mycompany/app/dialog/DialogPreImage;

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
    const-class v2, Landroid/graphics/drawable/PictureDrawable;

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
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreImage;->b0:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreImage;->e0:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 46
    .line 47
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreImage;->v0:Lcom/bumptech/glide/request/RequestListener;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    const/4 v1, 0x0

    .line 60
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->t0:Z

    .line 61
    .line 62
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreImage;->s0:Lcom/mycompany/app/view/GlideRequests;

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreImage;->d0:Ljava/lang/String;

    .line 69
    .line 70
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 77
    .line 78
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreImage;->v0:Lcom/bumptech/glide/request/RequestListener;

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method
