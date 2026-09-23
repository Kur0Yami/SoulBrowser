.class Lcom/mycompany/app/main/image/MainImagePreview$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$14;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$14;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$14$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$14;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$14$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$14;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$14;->c:Lcom/mycompany/app/main/image/MainImagePreview;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImagePreview;->M1:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->w1:Z

    .line 11
    .line 12
    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v4, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v5, v0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, v4, v5}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 35
    .line 36
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->j2:Lcom/bumptech/glide/request/RequestListener;

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/GlideRequests;->u(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 59
    .line 60
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->j2:Lcom/bumptech/glide/request/RequestListener;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->I(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->q1:Lcom/mycompany/app/view/MySizeImage;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
