.class Lcom/mycompany/app/dialog/DialogUrlLink$33$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogUrlLink$33;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogUrlLink$33;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogUrlLink$33$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$33;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogUrlLink$33$1;->c:Lcom/mycompany/app/dialog/DialogUrlLink$33;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink$33;->c:Lcom/mycompany/app/dialog/DialogUrlLink;

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
    sget-object v2, Lcom/bumptech/glide/util/Executors;->a:Ljava/util/concurrent/Executor;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->j0:Ljava/lang/String;

    .line 31
    .line 32
    iget-boolean v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->M0:Z

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 37
    .line 38
    move-object v1, v3

    .line 39
    :cond_2
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/mycompany/app/view/GlideRequests;->n()Lcom/bumptech/glide/RequestBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->b0:Landroid/content/Context;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v5, v0, v1}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v4, Lcom/mycompany/app/view/GlideRequest;

    .line 54
    .line 55
    invoke-virtual {v4, v0}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 60
    .line 61
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$33$1$1;

    .line 62
    .line 63
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$33$1$1;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink$33$1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1, v3, v0, v2}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->L0:Lcom/mycompany/app/view/GlideRequests;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/mycompany/app/view/GlideRequests;->d()Lcom/bumptech/glide/RequestBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogUrlLink;->f0:Ljava/lang/String;

    .line 77
    .line 78
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/mycompany/app/view/GlideRequest;

    .line 85
    .line 86
    new-instance v1, Lcom/mycompany/app/dialog/DialogUrlLink$33$1$2;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogUrlLink$33$1$2;-><init>(Lcom/mycompany/app/dialog/DialogUrlLink$33$1;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1, v3, v0, v2}, Lcom/bumptech/glide/RequestBuilder;->H(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/RequestFutureTarget;Lcom/bumptech/glide/request/BaseRequestOptions;Ljava/util/concurrent/Executor;)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
