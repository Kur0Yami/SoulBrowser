.class Lcom/mycompany/app/main/image/MainImagePreview$43$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImagePreview$43;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImagePreview$43;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImagePreview$43$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$43;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImagePreview$43$1;->c:Lcom/mycompany/app/main/image/MainImagePreview$43;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview$43;->c:Lcom/mycompany/app/main/image/MainImagePreview;

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
    const-class v3, Landroid/graphics/drawable/PictureDrawable;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->f1:Landroid/content/Context;

    .line 21
    .line 22
    iget-object v3, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, v0, Lcom/mycompany/app/main/image/MainImagePreview;->z1:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v2, v3, v4}, Lcom/mycompany/app/main/MainUtil;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/model/GlideUrl;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->s2:Lcom/mycompany/app/view/MyGlideTarget;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/GlideRequests;->b(Ljava/lang/Class;)Lcom/bumptech/glide/RequestBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, v0, Lcom/mycompany/app/main/image/MainImagePreview;->x1:Ljava/lang/String;

    .line 49
    .line 50
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->O(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/mycompany/app/view/GlideRequest;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImagePreview;->s2:Lcom/mycompany/app/view/MyGlideTarget;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->F(Lcom/bumptech/glide/request/target/Target;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
