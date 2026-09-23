.class Lcom/mycompany/app/main/AddrIconAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/AddrIconAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/AddrIconAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/AddrIconAdapter$1;->c:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    if-eqz p1, :cond_6

    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/mycompany/app/main/AddrIconAdapter$1;->c:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/AddrIconAdapter;->v(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-boolean v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->i:Z

    .line 36
    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 45
    .line 46
    iget-object v2, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v4, "mNotiAddr"

    .line 53
    .line 54
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 55
    .line 56
    const/16 v6, 0xf

    .line 57
    .line 58
    invoke-static {v6, v2, v4, v5}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    iget-object p1, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 62
    .line 63
    const/4 v2, 0x1

    .line 64
    invoke-virtual {p1, v3, v2}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-object p1, v1, Lcom/mycompany/app/main/AddrIconAdapter;->f:Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;

    .line 68
    .line 69
    if-nez p1, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    invoke-interface {p1, v0}, Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;->a(I)V

    .line 73
    .line 74
    .line 75
    :cond_6
    :goto_1
    return-void
.end method
