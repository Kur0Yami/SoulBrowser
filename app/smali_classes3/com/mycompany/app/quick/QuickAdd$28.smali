.class Lcom/mycompany/app/quick/QuickAdd$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickAdd;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$28;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd$28;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 16
    .line 17
    iput-object p1, v0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput v1, v0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method
