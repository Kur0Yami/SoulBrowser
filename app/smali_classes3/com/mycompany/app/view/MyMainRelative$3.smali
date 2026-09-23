.class Lcom/mycompany/app/view/MyMainRelative$3;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyMainRelative;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyMainRelative;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyMainRelative$3;->a:Lcom/mycompany/app/view/MyMainRelative;

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
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget p1, Lcom/mycompany/app/main/MainApp;->l1:I

    .line 5
    .line 6
    iget-object v0, p0, Lcom/mycompany/app/view/MyMainRelative$3;->a:Lcom/mycompany/app/view/MyMainRelative;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    add-int v5, v0, p1

    .line 17
    .line 18
    int-to-float v6, p1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    move-object v1, p2

    .line 22
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
