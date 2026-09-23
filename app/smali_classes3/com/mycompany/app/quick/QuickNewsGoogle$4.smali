.class Lcom/mycompany/app/quick/QuickNewsGoogle$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickNewsGoogle;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickNewsGoogle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$4;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickNewsGoogle$4;->c:Lcom/mycompany/app/quick/QuickNewsGoogle;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-interface {v1, v3, v2}, Lcom/mycompany/app/quick/QuickNews$NewsListListener;->b(Ljava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickNews;->b:Lcom/mycompany/app/quick/QuickNews$NewsListListener;

    .line 13
    .line 14
    :cond_0
    return-void
.end method
