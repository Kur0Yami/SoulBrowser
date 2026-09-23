.class Lcom/mycompany/app/quick/QuickAddAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAddAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAddAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAddAdapter$2;->c:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAddAdapter$2;->c:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAddAdapter;->e:Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    invoke-static {v0, p1}, Lcom/mycompany/app/quick/QuickAddAdapter;->v(Lcom/mycompany/app/quick/QuickAddAdapter;Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAddAdapter;->d:Ljava/util/List;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    if-ltz p1, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-lt p1, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAddAdapter;->d:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 35
    :goto_1
    if-nez p1, :cond_3

    .line 36
    .line 37
    :goto_2
    return-void

    .line 38
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAddAdapter;->e:Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;

    .line 39
    .line 40
    iget-object v1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 43
    .line 44
    iget-boolean p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->k:Z

    .line 45
    .line 46
    invoke-interface {v0, v1, v2, p1}, Lcom/mycompany/app/quick/QuickAddAdapter$QuickListListener;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
