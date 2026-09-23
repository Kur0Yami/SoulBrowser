.class Lcom/mycompany/app/dialog/DialogSetDesk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetDesk;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDesk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDesk$3;->a:Lcom/mycompany/app/dialog/DialogSetDesk;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDesk$3;->a:Lcom/mycompany/app/dialog/DialogSetDesk;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->h0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne p1, v2, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v3, 0x2

    .line 14
    if-ne p1, v3, :cond_2

    .line 15
    .line 16
    move v1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    move v2, v1

    .line 19
    :goto_0
    sget-boolean p1, Lcom/mycompany/app/pref/PrefWeb;->j:Z

    .line 20
    .line 21
    if-eq p1, v1, :cond_3

    .line 22
    .line 23
    sput-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->j:Z

    .line 24
    .line 25
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->b0:Landroid/content/Context;

    .line 26
    .line 27
    const/16 v3, 0xe

    .line 28
    .line 29
    const-string v4, "mDeskLock"

    .line 30
    .line 31
    invoke-static {v3, p1, v4, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    :cond_3
    iget-boolean p1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->d0:Z

    .line 35
    .line 36
    if-eq p1, v2, :cond_4

    .line 37
    .line 38
    iput-boolean v2, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->d0:Z

    .line 39
    .line 40
    iget-object p1, v0, Lcom/mycompany/app/dialog/DialogSetDesk;->c0:Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-interface {p1, v2}, Lcom/mycompany/app/dialog/DialogSetDesk$SetDeskListener;->a(Z)V

    .line 45
    .line 46
    .line 47
    :cond_4
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDesk;->dismiss()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
