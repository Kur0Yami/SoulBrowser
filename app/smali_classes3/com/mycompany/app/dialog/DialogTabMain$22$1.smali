.class Lcom/mycompany/app/dialog/DialogTabMain$22$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$22;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$22$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$22;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$22$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$22;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$22;->a:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->J0:Z

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMain;->H()V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->J0:Z

    .line 13
    .line 14
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMain;->c0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget-object v2, v2, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 19
    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget v3, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 28
    .line 29
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 30
    .line 31
    sget v5, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 32
    .line 33
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget v3, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 40
    .line 41
    invoke-virtual {v2, v3, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain;->d0:Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$TabGrid;->h:Lcom/mycompany/app/view/MyRecyclerView;

    .line 49
    .line 50
    if-nez v0, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    sget v2, Lcom/mycompany/app/pref/PrefZone;->C:I

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 58
    .line 59
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 60
    .line 61
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 62
    .line 63
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_4
    sget v2, Lcom/mycompany/app/main/MainApp;->q1:I

    .line 70
    .line 71
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_1
    return-void
.end method
