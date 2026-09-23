.class Lcom/mycompany/app/dialog/DialogWebSelect$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebSelect;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebSelect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebSelect$1;->c:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogWebSelect$1;->c:Lcom/mycompany/app/dialog/DialogWebSelect;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/mycompany/app/view/MyDialogRelative;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v1, v3}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    const/4 v5, -0x2

    .line 27
    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    sget v4, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 31
    .line 32
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 33
    .line 34
    sget v4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 35
    .line 36
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 37
    .line 38
    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->d0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 42
    .line 43
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogWebSelect;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez v1, :cond_1

    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebSelect$2;

    .line 51
    .line 52
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogWebSelect$2;-><init>(Lcom/mycompany/app/dialog/DialogWebSelect;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    return-void
.end method
