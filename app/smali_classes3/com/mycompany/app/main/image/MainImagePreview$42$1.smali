.class Lcom/mycompany/app/main/image/MainImagePreview$42$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$42;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$42;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$42$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$42;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$42$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$42;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$42;->g:Lcom/mycompany/app/main/image/MainImagePreview;

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
    sget-object v3, Lcom/bumptech/glide/util/Executors;->a:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->n()Lcom/bumptech/glide/RequestBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v5, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v2, v5, v0}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 38
    .line 39
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$42$1$1;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$42$1$1;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$42$1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1, v4, v0, v3}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 53
    .line 54
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 61
    .line 62
    new-instance v1, Lcom/mycompany/app/main/image/MainImagePreview$42$1$2;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/image/MainImagePreview$42$1$2;-><init>(Lcom/mycompany/app/main/image/MainImagePreview$42$1;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1, v4, v0, v3}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
