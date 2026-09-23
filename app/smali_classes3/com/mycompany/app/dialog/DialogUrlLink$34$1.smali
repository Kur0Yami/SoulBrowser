.class Lcom/mycompany/app/dialog/DialogUrlLink$34$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink$34;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink$34;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$34$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$34;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$34$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$34;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink$34;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

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
    const-class v2, Landroid/graphics/drawable/PictureDrawable;

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
    invoke-virtual {v3, v2}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 45
    .line 46
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v3, v4, v1}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v2, Lcom/mycompany/app/view/GlideRequest;

    .line 53
    .line 54
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->Y0:Lcom/mycompany/app/view/MyGlideTarget;

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 73
    .line 74
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->Y0:Lcom/mycompany/app/view/MyGlideTarget;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
