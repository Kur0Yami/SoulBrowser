.class public final synthetic Landroidx/credentials/playservices/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic c:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

.field public final synthetic f:Landroid/os/CancellationSignal;

.field public final synthetic g:Ljava/util/concurrent/Executor;

.field public final synthetic h:Landroidx/credentials/CredentialManagerCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/credentials/playservices/c;->c:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    iput-object p2, p0, Landroidx/credentials/playservices/c;->f:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/credentials/playservices/c;->g:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroidx/credentials/playservices/c;->h:Landroidx/credentials/CredentialManagerCallback;

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/credentials/playservices/c;->g:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroidx/credentials/playservices/c;->h:Landroidx/credentials/CredentialManagerCallback;

    iget-object v2, p0, Landroidx/credentials/playservices/c;->c:Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;

    iget-object v3, p0, Landroidx/credentials/playservices/c;->f:Landroid/os/CancellationSignal;

    invoke-static {v2, v3, v0, v1, p1}, Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;->$r8$lambda$EEPRZu6PiJcReImfv141-6oqzqk(Landroidx/credentials/playservices/CredentialProviderPlayServicesImpl;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroidx/credentials/CredentialManagerCallback;Ljava/lang/Exception;)V

    return-void
.end method
