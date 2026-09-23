.class Lcom/mycompany/app/dialog/DialogWebBookEdit$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogWebBookEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$7;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogWebBookEdit$7;->c:Lcom/mycompany/app/dialog/DialogWebBookEdit;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->e0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->u0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebBookEdit;->D()V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :goto_1
    move-object v5, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    const/4 v1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :goto_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 33
    .line 34
    iget-object v3, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->a0:Lcom/mycompany/app/main/MainActivity;

    .line 35
    .line 36
    iget-object v4, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->i0:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v7, Lcom/mycompany/app/dialog/DialogWebBookEdit$11;

    .line 39
    .line 40
    invoke-direct {v7, p1}, Lcom/mycompany/app/dialog/DialogWebBookEdit$11;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 41
    .line 42
    .line 43
    const/4 v6, 0x6

    .line 44
    invoke-direct/range {v2 .. v7}, Lcom/mycompany/app/dialog/DialogWebBookList;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/util/List;ILcom/mycompany/app/dialog/DialogWebBookList$BookListListener;)V

    .line 45
    .line 46
    .line 47
    iput-object v2, p1, Lcom/mycompany/app/dialog/DialogWebBookEdit;->u0:Lcom/mycompany/app/dialog/DialogWebBookList;

    .line 48
    .line 49
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebBookEdit$12;

    .line 50
    .line 51
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogWebBookEdit$12;-><init>(Lcom/mycompany/app/dialog/DialogWebBookEdit;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogNormal;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
