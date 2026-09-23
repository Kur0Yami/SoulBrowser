.class Lcom/mycompany/app/main/MainTransLocale$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransLocale$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransLocale$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransLocale$8$2;->c:Lcom/mycompany/app/main/MainTransLocale$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransLocale$8$2;->c:Lcom/mycompany/app/main/MainTransLocale$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransLocale$8;->c:Lcom/mycompany/app/main/MainTransLocale;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainTransLocale;->c:Lcom/mycompany/app/main/MainTransLocale$TransLocaleListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v2, v0, Lcom/mycompany/app/main/MainTransLocale;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-interface {v1, v2}, Lcom/mycompany/app/main/MainTransLocale$TransLocaleListener;->a(Ljava/util/ArrayList;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainTransLocale;->r:Z

    .line 16
    .line 17
    return-void
.end method
