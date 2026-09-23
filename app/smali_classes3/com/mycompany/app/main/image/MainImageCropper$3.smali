.class Lcom/mycompany/app/main/image/MainImageCropper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageCropper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageCropper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$3;->c:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageCropper$3;->c:Lcom/mycompany/app/main/image/MainImageCropper;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/mycompany/app/main/image/MainImageCropper;->q1:Lcom/mycompany/app/crop/CropImageView;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/crop/CropImageView;->a(Landroid/graphics/RectF;Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/mycompany/app/crop/CropImageView;->invalidate()V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method
