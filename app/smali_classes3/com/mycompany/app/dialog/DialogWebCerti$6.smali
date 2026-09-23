.class Lcom/mycompany/app/dialog/DialogWebCerti$6;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogWebCerti;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebCerti;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebCerti$6;->a:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebCerti$6;->a:Lcom/mycompany/app/dialog/DialogWebCerti;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->f0:Lcom/mycompany/app/dialog/DialogWebCerti$CertiAdapter;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->h0:Z

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    iput v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 21
    .line 22
    :cond_2
    if-nez p1, :cond_3

    .line 23
    .line 24
    :goto_0
    return v2

    .line 25
    :cond_3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    const/high16 v3, 0x42c80000    # 100.0f

    .line 29
    .line 30
    div-float v1, v3, v1

    .line 31
    .line 32
    const/high16 v4, 0x3f800000    # 1.0f

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    sub-float/2addr v4, p1

    .line 39
    add-float/2addr v4, v1

    .line 40
    div-float/2addr v3, v4

    .line 41
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, v0, Lcom/mycompany/app/dialog/DialogWebCerti;->i0:I

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogWebCerti;->B(I)V

    .line 48
    .line 49
    .line 50
    return v2
.end method
