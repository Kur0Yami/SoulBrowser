.class Lcom/mycompany/app/main/image/MainImageCropper$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageCropper$6;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageCropper$6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$6$1;->c:Lcom/mycompany/app/main/image/MainImageCropper$6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageCropper$6$1;->c:Lcom/mycompany/app/main/image/MainImageCropper$6;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageCropper$6;->c:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->C1:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->D1:Landroid/net/Uri;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iput-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->C1:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->D1:Landroid/net/Uri;

    .line 13
    .line 14
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    invoke-static {v1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImageCropper;->f1:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v4, v0, Lcom/mycompany/app/main/image/MainImageCropper;->j1:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v3, v1, v4}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v2, Lcom/mycompany/app/view/GlideRequest;

    .line 46
    .line 47
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageCropper;->E1:Lcom/mycompany/app/view/MyGlideTarget;

    .line 54
    .line 55
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImageCropper;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/mycompany/app/view/GlideRequest;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageCropper;->E1:Lcom/mycompany/app/view/MyGlideTarget;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_2
    if-eqz v2, :cond_3

    .line 80
    .line 81
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageCropper;->A1:Lcom/mycompany/app/view/GlideRequests;

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->K(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageCropper;->E1:Lcom/mycompany/app/view/MyGlideTarget;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    return-void
.end method
