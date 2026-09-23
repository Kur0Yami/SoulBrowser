.class Lcom/mycompany/app/dialog/DialogDownZip$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownZip$13;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownZip$13;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownZip$13$1;->c:Lcom/mycompany/app/dialog/DialogDownZip$13;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownZip$13$1;->c:Lcom/mycompany/app/dialog/DialogDownZip$13;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownZip$13;->c:Lcom/mycompany/app/dialog/DialogDownZip;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownZip;->w1:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->w1:Ljava/lang/String;

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
    const-class v3, Landroid/graphics/drawable/PictureDrawable;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t1:Lcom/mycompany/app/view/GlideRequests;

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownZip;->b0:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogDownZip;->d0:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v1, v4}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v2, Lcom/mycompany/app/view/GlideRequest;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 44
    .line 45
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->x1:Lcom/bumptech/glide/request/RequestListener;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->t1:Lcom/mycompany/app/view/GlideRequests;

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/mycompany/app/view/GlideRequest;

    .line 64
    .line 65
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 70
    .line 71
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownZip;->x1:Lcom/bumptech/glide/request/RequestListener;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownZip;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 78
    .line 79
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method
