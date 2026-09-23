.class Lcom/mycompany/app/dialog/DialogCapture$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogCapture;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogCapture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$3;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogCapture$3;->c:Lcom/mycompany/app/dialog/DialogCapture;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogCapture;->J:Lcom/mycompany/app/zoom/ZoomImageAttacher;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/zoom/ZoomImageAttacher;->e()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogCapture;->G:Lcom/mycompany/app/crop/CropImageView;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    iget-object v0, p1, Lcom/mycompany/app/crop/CropImageView;->o:Landroid/graphics/RectF;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v1, 0x1

    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/crop/CropImageView;->a(Landroid/graphics/RectF;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/mycompany/app/crop/CropImageView;->invalidate()V

    .line 25
    .line 26
    .line 27
    :cond_2
    :goto_0
    return-void
.end method
