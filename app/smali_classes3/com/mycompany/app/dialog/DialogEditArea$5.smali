.class Lcom/mycompany/app/dialog/DialogEditArea$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainAreaAdapter$MainAreaListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogEditArea;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogEditArea;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$5;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$5;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->H()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/mycompany/app/dialog/DialogEditCmd;->dismiss()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 24
    .line 25
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 26
    .line 27
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogEditArea;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 28
    .line 29
    int-to-long v4, p1

    .line 30
    new-instance v8, Lcom/mycompany/app/dialog/DialogEditArea$14;

    .line 31
    .line 32
    invoke-direct {v8, v0}, Lcom/mycompany/app/dialog/DialogEditArea$14;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x1

    .line 36
    move-object v6, p2

    .line 37
    invoke-direct/range {v2 .. v8}, Lcom/mycompany/app/dialog/DialogEditCmd;-><init>(Lcom/mycompany/app/main/MainActivity;JLjava/lang/String;ZLcom/mycompany/app/dialog/DialogEditUrl$EditUrlListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->p0:Lcom/mycompany/app/dialog/DialogEditCmd;

    .line 41
    .line 42
    new-instance p1, Lcom/mycompany/app/dialog/DialogEditArea$15;

    .line 43
    .line 44
    invoke-direct {p1, v0}, Lcom/mycompany/app/dialog/DialogEditArea$15;-><init>(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$5;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogEditArea;->C0:Z

    .line 4
    .line 5
    return v0
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$5;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->B(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
