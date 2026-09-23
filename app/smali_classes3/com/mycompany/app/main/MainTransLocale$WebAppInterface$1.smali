.class Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;->onObserDet(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1;->c:Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1;->c:Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface;->a:Lcom/mycompany/app/main/MainTransLocale;

    .line 4
    .line 5
    iget v1, v0, Lcom/mycompany/app/main/MainTransLocale;->m:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransLocale;->n:Z

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainTransLocale;->r:Z

    .line 16
    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    iput-boolean v2, v0, Lcom/mycompany/app/main/MainTransLocale;->r:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput v1, v0, Lcom/mycompany/app/main/MainTransLocale;->s:I

    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/main/MainTransLocale;->h:Lcom/mycompany/app/view/MyWebSafe;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v1, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1$1;-><init>(Lcom/mycompany/app/main/MainTransLocale$WebAppInterface$1;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, 0x64

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method
