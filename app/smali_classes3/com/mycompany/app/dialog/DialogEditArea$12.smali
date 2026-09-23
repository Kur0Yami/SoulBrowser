.class Lcom/mycompany/app/dialog/DialogEditArea$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditArea$12;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogEditArea;->E0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditArea$12;->a:Lcom/mycompany/app/dialog/DialogEditArea;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->G()V

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->i0:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->z0:Ljava/util/ArrayList;

    .line 14
    .line 15
    if-eqz v1, :cond_3

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->z0:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/mycompany/app/dialog/DialogEditArea;->C(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditArea;->A0:Ljava/util/ArrayList;

    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogEditArea;->i0:Lcom/mycompany/app/main/MainAreaAdapter;

    .line 33
    .line 34
    iput-object v1, v2, Lcom/mycompany/app/main/MainAreaAdapter;->d:Ljava/util/ArrayList;

    .line 35
    .line 36
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->J:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/mycompany/app/main/MainAreaAdapter;->w()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    iput v1, v2, Lcom/mycompany/app/main/MainAreaAdapter;->f:I

    .line 45
    .line 46
    :cond_2
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogEditArea;->B(Lcom/mycompany/app/dialog/DialogEditArea;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    :goto_0
    return-void
.end method
