.class Lcom/mycompany/app/db/book/DbRecentLang$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->c:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->f:Landroid/content/Context;

    .line 7
    .line 8
    iput p1, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->g:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->h:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget v2, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->g:I

    .line 8
    .line 9
    iget-object v3, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->f:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {v3, v2, v0}, Lcom/mycompany/app/db/book/DbRecentLang;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/db/book/DbRecentLang$1;->h:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v3, v2, v0}, Lcom/mycompany/app/db/book/DbRecentLang;->i(Landroid/content/Context;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
