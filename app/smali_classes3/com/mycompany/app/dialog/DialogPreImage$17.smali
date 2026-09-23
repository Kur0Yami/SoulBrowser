.class Lcom/mycompany/app/dialog/DialogPreImage$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogPreImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/RequestListener<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreImage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$17;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/load/engine/GlideException;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$17;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->t0:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->e0:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->a:Z

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->e0:Ljava/lang/String;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 27
    .line 28
    new-instance v0, Lcom/mycompany/app/dialog/DialogPreImage$17$1;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/mycompany/app/dialog/DialogPreImage$17$1;-><init>(Lcom/mycompany/app/dialog/DialogPreImage$17;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return v1

    .line 37
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->j0:Lcom/mycompany/app/view/MyCoverView;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    :goto_0
    return v1

    .line 42
    :cond_2
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogPreImage;->D()V

    .line 46
    .line 47
    .line 48
    return v1
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogPreImage$17;->c:Lcom/mycompany/app/dialog/DialogPreImage;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->j0:Lcom/mycompany/app/view/MyCoverView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 15
    .line 16
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->r0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogPreImage;->i0:Landroid/widget/ImageView;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 31
    .line 32
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreImage$20;

    .line 33
    .line 34
    invoke-direct {v2, p1}, Lcom/mycompany/app/dialog/DialogPreImage$20;-><init>(Lcom/mycompany/app/dialog/DialogPreImage;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/zoom/ZoomImageAttacher;-><init>(Landroid/widget/ImageView;Lcom/mycompany/app/zoom/ZoomImageAttacher$AttacherListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogPreImage;->r0:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 41
    .line 42
    :cond_2
    :goto_0
    return-void
.end method
