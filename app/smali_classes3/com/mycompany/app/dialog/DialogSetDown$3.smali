.class Lcom/mycompany/app/dialog/DialogSetDown$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSetDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetDown$3;->a:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetDown$3;->a:Lcom/mycompany/app/dialog/DialogSetDown;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->h0:Lcom/mycompany/app/main/MainAppAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v2, v1, Lcom/mycompany/app/main/MainAppAdapter;->e:Ljava/util/List;

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    if-ltz p1, :cond_2

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-lt p1, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v1, v1, Lcom/mycompany/app/main/MainAppAdapter;->e:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 31
    :goto_1
    if-nez p1, :cond_3

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetDown;->d0:Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;

    .line 35
    .line 36
    if-nez v1, :cond_4

    .line 37
    .line 38
    :goto_2
    return-void

    .line 39
    :cond_4
    iget-object v2, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v3, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/mycompany/app/main/MainItem$ChildItem;->G:Ljava/lang/String;

    .line 44
    .line 45
    invoke-interface {v1, v2, v3, p1}, Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetDown;->dismiss()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
