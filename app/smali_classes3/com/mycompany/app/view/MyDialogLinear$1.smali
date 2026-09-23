.class Lcom/mycompany/app/view/MyDialogLinear$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyDialogLinear;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogLinear;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear$1;->a:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 13

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogLinear$1;->a:Lcom/mycompany/app/view/MyDialogLinear;

    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyDialogLinear;->j:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget p1, p1, Lcom/mycompany/app/view/MyDialogLinear;->k:I

    .line 19
    .line 20
    add-int v5, v0, p1

    .line 21
    .line 22
    int-to-float v6, p1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v1, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    move-object v1, p2

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    iget p1, p1, Lcom/mycompany/app/view/MyDialogLinear;->k:I

    .line 40
    .line 41
    int-to-float v12, p1

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v9, 0x0

    .line 44
    move-object v7, v1

    .line 45
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
