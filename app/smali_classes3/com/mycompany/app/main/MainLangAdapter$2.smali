.class Lcom/mycompany/app/main/MainLangAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

.field public final synthetic f:Lcom/mycompany/app/main/MainLangAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainLangAdapter;Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainLangAdapter$2;->f:Lcom/mycompany/app/main/MainLangAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/MainLangAdapter$2;->c:Lcom/mycompany/app/main/MainLangAdapter$MainLangItem;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainLangAdapter$2;->f:Lcom/mycompany/app/main/MainLangAdapter;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainLangAdapter;->m:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p1, Lcom/mycompany/app/main/MainLangAdapter;->m:Z

    .line 10
    .line 11
    iget-object p1, p1, Lcom/mycompany/app/main/MainLangAdapter;->d:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Lcom/mycompany/app/main/MainLangAdapter$2$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/mycompany/app/main/MainLangAdapter$2$1;-><init>(Lcom/mycompany/app/main/MainLangAdapter$2;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainApp;->J(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
