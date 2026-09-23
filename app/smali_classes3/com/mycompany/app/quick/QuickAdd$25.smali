.class Lcom/mycompany/app/quick/QuickAdd$25;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainListLoader$ListLoadListener;


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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$25;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAdd$25;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 3
    .line 4
    iput-boolean p1, p2, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p2, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    iget-object p1, p2, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p2, p1}, Lcom/mycompany/app/quick/QuickAdd;->S0(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final b(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$25;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const/4 v0, 0x1

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iput-boolean v0, p1, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 17
    .line 18
    iput-object p3, p1, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    iput v1, p1, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 21
    .line 22
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iput-boolean v1, p1, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    iput-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 37
    .line 38
    iget-object p2, p1, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 39
    .line 40
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Lcom/mycompany/app/quick/QuickAdd;->S0(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
