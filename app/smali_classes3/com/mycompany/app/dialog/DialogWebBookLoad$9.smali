.class Lcom/mycompany/app/dialog/DialogWebBookLoad$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookLoad;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookLoad;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$9;->c:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebBookLoad$9;->c:Lcom/mycompany/app/dialog/DialogWebBookLoad;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->d:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O1(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->n4(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->a0:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->C0:Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;

    .line 27
    .line 28
    iget-object v3, v3, Lcom/mycompany/app/dialog/DialogWebBookSave$HtmlItem;->f:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->d0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->V7(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebBookLoad;->m0:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebBookLoad$9$1;

    .line 50
    .line 51
    invoke-direct {v1, p0, v2}, Lcom/mycompany/app/dialog/DialogWebBookLoad$9$1;-><init>(Lcom/mycompany/app/dialog/DialogWebBookLoad$9;Landroid/graphics/Bitmap;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
