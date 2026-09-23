.class Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebVie2$11$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebVie2$11;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v3, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->k0:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebVie2;->m0:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3, v1}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebVie2$11$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogWebVie2$11;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogWebVie2;->J(I)V

    .line 31
    .line 32
    .line 33
    sget v1, Lcom/mycompany/app/pref/PrefZone;->y:I

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11$1;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11$1;->c:Lcom/mycompany/app/dialog/DialogWebVie2$11;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2$11;->c:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1$1;

    .line 50
    .line 51
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogWebVie2$11$1$1$1$1;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method
