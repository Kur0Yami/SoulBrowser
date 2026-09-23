.class Lcom/mycompany/app/dialog/DialogPreview$18$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview$18;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview$18;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$18$1;->c:Lcom/mycompany/app/dialog/DialogPreview$18;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$18$1;->c:Lcom/mycompany/app/dialog/DialogPreview$18;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreview$18;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->R0:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->R0:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->J0:Lcom/mycompany/app/view/GlideRequests;

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
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->K0:Z

    .line 25
    .line 26
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->J0:Lcom/mycompany/app/view/GlideRequests;

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->b0:Landroid/content/Context;

    .line 33
    .line 34
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->f0:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3, v1, v4}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v2, Lcom/mycompany/app/view/GlideRequest;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->S0:Lcom/bumptech/glide/request/RequestListener;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    const/4 v2, 0x0

    .line 61
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->K0:Z

    .line 62
    .line 63
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->J0:Lcom/mycompany/app/view/GlideRequests;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/mycompany/app/view/GlideRequest;

    .line 70
    .line 71
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 76
    .line 77
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->S0:Lcom/bumptech/glide/request/RequestListener;

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequest;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogPreview;->r0:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
