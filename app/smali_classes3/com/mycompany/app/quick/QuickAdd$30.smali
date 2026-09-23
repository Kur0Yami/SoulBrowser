.class Lcom/mycompany/app/quick/QuickAdd$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;


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
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd$30;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/quick/QuickAdd;->X2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd$30;->a:Lcom/mycompany/app/quick/QuickAdd;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAdd;->R0()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    iput p1, v0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 20
    .line 21
    iget-object p1, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickAdd;->S0(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
