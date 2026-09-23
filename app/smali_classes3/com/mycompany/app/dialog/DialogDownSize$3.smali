.class Lcom/mycompany/app/dialog/DialogDownSize$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownSize;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownSize;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize$3;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize$3;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogDownSize;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p1, Lcom/mycompany/app/dialog/DialogDownSize;->m0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogDownSize;->dismiss()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-wide v0, p1, Lcom/mycompany/app/dialog/DialogDownSize;->k0:J

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-lez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogDownSize;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogDownSize;->B()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
