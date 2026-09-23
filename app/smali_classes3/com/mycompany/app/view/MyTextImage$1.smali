.class Lcom/mycompany/app/view/MyTextImage$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/view/MyTextImage;->setRoundClip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyTextImage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyTextImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage$1;->a:Lcom/mycompany/app/view/MyTextImage;

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
    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage$1;->a:Lcom/mycompany/app/view/MyTextImage;

    .line 5
    .line 6
    iget-boolean v0, p1, Lcom/mycompany/app/view/MyTextImage;->q:Z

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
    move-result v5

    .line 18
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 19
    .line 20
    int-to-float v6, p1

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v1, p2

    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method
