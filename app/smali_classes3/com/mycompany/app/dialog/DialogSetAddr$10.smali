.class Lcom/mycompany/app/dialog/DialogSetAddr$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetAddr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr$10;->a:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogSetAddr;->v0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr$10;->a:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAddr;->C()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2, v2}, Lcom/mycompany/app/main/AddrIconAdapter;->w(ZZ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAddr;->D()V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->u0:Z

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->u0:Z

    .line 31
    .line 32
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAddr$12;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$12;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
