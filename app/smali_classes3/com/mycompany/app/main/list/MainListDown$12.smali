.class Lcom/mycompany/app/main/list/MainListDown$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownUrl$DownUrlListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/mycompany/app/main/list/MainListDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/list/MainListDown$12;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/main/list/MainListDown$12;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lcom/mycompany/app/web/WebNestView;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Ljava/lang/String;Lcom/mycompany/app/main/MainUri$UriItem;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p3, Lcom/mycompany/app/main/list/MainListDown;->W1:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p3, p0, Lcom/mycompany/app/main/list/MainListDown$12;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 4
    .line 5
    invoke-virtual {p3}, Lcom/mycompany/app/main/list/MainListDown;->I0()V

    .line 6
    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p2, Lcom/mycompany/app/main/MainUri$UriItem;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p4, p3, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    if-nez p4, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    sget p4, Lnet/kaki87/soul2/testing/R$string;->down_start:I

    .line 19
    .line 20
    invoke-static {p3, p4}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    new-instance p4, Lcom/mycompany/app/main/list/MainListDown$9;

    .line 24
    .line 25
    invoke-direct {p4, p3, p1, p2, p6}, Lcom/mycompany/app/main/list/MainListDown$9;-><init>(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p3, p4}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final e(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/mycompany/app/main/list/MainListDown$12;->b:Lcom/mycompany/app/main/list/MainListDown;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/main/list/MainListDown$12;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p4, p1, v0, p2, p3}, Lcom/mycompany/app/main/list/MainListDown;->F0(Lcom/mycompany/app/main/list/MainListDown;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method
