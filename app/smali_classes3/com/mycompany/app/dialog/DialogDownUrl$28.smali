.class Lcom/mycompany/app/dialog/DialogDownUrl$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogDownUrl;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownUrl$28;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownUrl$28;->c:Lcom/mycompany/app/dialog/DialogDownUrl;

    .line 2
    .line 3
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/main/MainDownAdapter;

    .line 9
    .line 10
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K1:Ljava/util/List;

    .line 11
    .line 12
    iget-object v5, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->U0:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v6, Lcom/mycompany/app/dialog/DialogDownUrl$29;

    .line 15
    .line 16
    invoke-direct {v6, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$29;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 17
    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/main/MainDownAdapter;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/util/List;ILjava/lang/String;Lcom/mycompany/app/main/MainDownAdapter$MainDownListener;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->K0:Lcom/mycompany/app/main/MainDownAdapter;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogDownUrl;->J0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 39
    .line 40
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$30;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$30;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 49
    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogDownUrl$31;

    .line 54
    .line 55
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogDownUrl$31;-><init>(Lcom/mycompany/app/dialog/DialogDownUrl;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method
