.class Lcom/mycompany/app/main/MainDownAdapter$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownAdapter$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownAdapter$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownAdapter$5$1;->c:Lcom/mycompany/app/main/MainDownAdapter$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownAdapter$5$1;->c:Lcom/mycompany/app/main/MainDownAdapter$5;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownAdapter$5;->g:Lcom/mycompany/app/main/MainDownAdapter;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/main/MainDownAdapter;->j:Lcom/mycompany/app/view/GlideRequests;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/main/MainDownAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 11
    .line 12
    iget-object v4, v0, Lcom/mycompany/app/main/MainDownAdapter$5;->c:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/mycompany/app/main/MainDownAdapter;->g:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v3, v4, v1}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/GlideRequests;->t(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bumptech/glide/RequestBuilder;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownAdapter$5;->f:Lcom/mycompany/app/view/MyRoundImage;

    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
