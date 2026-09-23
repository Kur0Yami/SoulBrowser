.class Lcom/mycompany/app/dialog/DialogQuickEdit$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogQuickEdit$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickEdit$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$12$1;->c:Lcom/mycompany/app/dialog/DialogQuickEdit$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$12$1;->c:Lcom/mycompany/app/dialog/DialogQuickEdit$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogQuickEdit$12;->c:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 11
    .line 12
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 13
    .line 14
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    const v3, -0xafafb0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const v3, -0x70708

    .line 23
    .line 24
    .line 25
    :goto_0
    const/4 v4, 0x1

    .line 26
    invoke-virtual {v1, v4, v3, v0, v2}, Lcom/mycompany/app/view/MyRoundImage;->B(IILjava/util/List;Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
