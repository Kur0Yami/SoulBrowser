.class Lcom/mycompany/app/dialog/DialogViewRead$61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$61;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$61;->a:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->m2:Lcom/mycompany/app/main/MainTransText;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTransText;->b()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->m2:Lcom/mycompany/app/main/MainTransText;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->l2:Z

    .line 20
    .line 21
    iget-boolean v2, p1, Lcom/mycompany/app/dialog/DialogViewRead;->H0:Z

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iput-boolean v3, p1, Lcom/mycompany/app/dialog/DialogViewRead;->H0:Z

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->C0()V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$69;

    .line 32
    .line 33
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogViewRead$69;-><init>(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->k0(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1, v0}, Lcom/mycompany/app/dialog/DialogViewRead;->F0(Z)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogViewRead;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyButtonImage;->setLoad(Z)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p1, Lcom/mycompany/app/dialog/DialogViewRead;->O:Lcom/mycompany/app/view/MyButtonImage;

    .line 51
    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogViewRead;->s0()V

    .line 53
    .line 54
    .line 55
    return-void
.end method
