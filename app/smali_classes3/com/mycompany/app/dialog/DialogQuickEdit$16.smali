.class Lcom/mycompany/app/dialog/DialogQuickEdit$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogQuickEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$16;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->G0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$16;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogQuickEdit;->D()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

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
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 15
    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 20
    .line 21
    iput p1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 22
    .line 23
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-static {p1, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/mycompany/app/dialog/DialogQuickEdit;->F(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
